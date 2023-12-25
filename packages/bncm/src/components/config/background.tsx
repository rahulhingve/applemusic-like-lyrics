import type { FC } from "react";
import { GroupBox, GroupBoxDevider } from "../appkit/group-box";
import {
	ColorConfigComponent,
	NumberTextFieldConfigComponent,
	SwitchConfigComponent,
} from "./common";
import {
	BackgroundType,
	backgroundCustomSolidColorAtom,
	backgroundFlowSpeedAtom,
	backgroundMaxFPSAtom,
	backgroundRenderScaleAtom,
	backgroundStaticModeAtom,
	backgroundTypeAtom,
	enableBackgroundAtom,
} from "./atoms";
import { Select } from "../appkit/select";
import { useAtom, useAtomValue } from "jotai";

export const BackgroundConfig: FC = () => {
	const enableBackground = useAtomValue(enableBackgroundAtom);
	const [backgroundType, setBackgroundType] = useAtom(backgroundTypeAtom);
	return (
		<>
			<GroupBox>
				<SwitchConfigComponent
					atom={enableBackgroundAtom}
					label="显示歌词背景"
				/>
				{enableBackground && (
					<>
						<GroupBoxDevider />
						<div
							style={{
								display: "flex",
								gap: "8px",
								justifyContent: "space-between",
								alignItems: "center",
							}}
						>
							<div className="amll-config-text">背景类型</div>
							<Select
								onChange={(value) => setBackgroundType(value)}
								value={backgroundType}
								data={[
									{
										value: BackgroundType.FakeLiquid,
										label: "伪流体背景",
									},
									{
										value: BackgroundType.LiquidEplor,
										label: "真流体背景 (Eplor)",
									},
									{
										value: BackgroundType.CustomSolidColor,
										label: "纯实心静态颜色背景",
									},
								]}
							/>
						</div>
					</>
				)}
			</GroupBox>
			{enableBackground && (
				<>
					{backgroundType !== BackgroundType.CustomSolidColor && (
						<GroupBox>
							<SwitchConfigComponent
								atom={backgroundStaticModeAtom}
								label="静态模式"
								description="即背景变换完成后保持静止并暂停渲染，以改善性能"
							/>
							<GroupBoxDevider />
							<NumberTextFieldConfigComponent
								atom={backgroundMaxFPSAtom}
								label="最大帧率"
								description="默认为 30，如果超出你的显示器设备的最大帧率则没有作用"
							/>
							<GroupBoxDevider />
							<NumberTextFieldConfigComponent
								atom={backgroundRenderScaleAtom}
								label="渲染精度"
								description="默认为 0.5 (50%)，越高背景更细致，但是性能消耗更大且很多时候并不明显"
							/>
							<GroupBoxDevider />
							<NumberTextFieldConfigComponent
								atom={backgroundFlowSpeedAtom}
								label="播放速度"
								description="也可以被叫做背景的流动速度，默认为 2，数字越大越快"
							/>
						</GroupBox>
					)}
					{backgroundType === BackgroundType.CustomSolidColor && (
						<GroupBox>
							<ColorConfigComponent
								atom={backgroundCustomSolidColorAtom}
								label="背景填充颜色"
							/>
						</GroupBox>
					)}
				</>
			)}
		</>
	);
};

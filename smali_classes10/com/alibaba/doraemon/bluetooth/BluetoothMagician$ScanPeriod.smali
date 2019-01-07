.class public Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;
.super Ljava/lang/Object;
.source "BluetoothMagician.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScanPeriod"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;
    }
.end annotation


# static fields
.field public static final DEFAULT_BACKGROUND_BETWEEN_SCAN_PERIOD:J = 0x2bf20L

.field public static final DEFAULT_BACKGROUND_SCAN_PERIOD:J = 0x7d0L

.field public static final DEFAULT_FOREGROUND_BETWEEN_SCAN_PERIOD:J = 0x0L

.field public static final DEFAULT_FOREGROUND_SCAN_PERIOD:J = 0x7d0L

.field public static final LOW_BACKGROUND_BETWEEN_SCAN_PERIOD:J = 0x493e0L

.field public static final LOW_BACKGROUND_SCAN_PERIOD:J = 0x2710L

.field public static final LOW_FOREGROUND_BETWEEN_SCAN_PERIOD:J = 0x1388L

.field public static final LOW_FOREGROUND_SCAN_PERIOD:J = 0x7d0L

.field public static final NEVER_BETWEEN_SCAN_PERIOD:J = 0x2932e00L

.field public static final NEVER_SCAN_PERIOD:J = 0x3e8L

.field public static final RANGING_BETWEEN_SCAN_PERIOD:J = 0x64L

.field public static final RANGING_SCAN_PERIOD:J = 0x12cL


# instance fields
.field private customBackgroundBetweenScanPeriod:J

.field private customBackgroundScanPeriod:J

.field private customForegroundBetweenScanPeriod:J

.field private customForegroundScanPeriod:J

.field private highBackgroundBetweenScanPeriod:J

.field private highBackgroundScanPeriod:J

.field private highForegroundBetweenScanPeriod:J

.field private highForegroundScanPeriod:J

.field private lowBackgroundBetweenScanPeriod:J

.field private lowBackgroundScanPeriod:J

.field private lowForegroundBetweenScanPeriod:J

.field private lowForegroundScanPeriod:J

.field private scanMode:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const-wide/32 v6, 0x2bf20

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x7d0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-wide v2, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->highForegroundScanPeriod:J

    .line 112
    iput-wide v4, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->highForegroundBetweenScanPeriod:J

    .line 113
    iput-wide v2, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->highBackgroundScanPeriod:J

    .line 114
    iput-wide v6, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->highBackgroundBetweenScanPeriod:J

    .line 116
    iput-wide v2, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->lowForegroundScanPeriod:J

    .line 117
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->lowForegroundBetweenScanPeriod:J

    .line 118
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->lowBackgroundScanPeriod:J

    .line 119
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->lowBackgroundBetweenScanPeriod:J

    .line 121
    iput-wide v2, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->customForegroundScanPeriod:J

    .line 122
    iput-wide v4, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->customForegroundBetweenScanPeriod:J

    .line 123
    iput-wide v2, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->customBackgroundScanPeriod:J

    .line 124
    iput-wide v6, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->customBackgroundBetweenScanPeriod:J

    .line 126
    sget-object v0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;->HIGH:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    iput-object v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->scanMode:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    return-void
.end method


# virtual methods
.method public getBackgroundBetweenScanPeriod()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 193
    iget-object v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->scanMode:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    sget-object v1, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;->HIGH:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    if-ne v0, v1, :cond_0

    .line 194
    iget-wide v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->highBackgroundBetweenScanPeriod:J

    .line 200
    :goto_0
    return-wide v0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->scanMode:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    sget-object v1, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;->NEVER:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    if-ne v0, v1, :cond_1

    .line 196
    const-wide/32 v0, 0x2932e00

    goto :goto_0

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->scanMode:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    sget-object v1, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;->CUSTOM:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    if-ne v0, v1, :cond_2

    .line 198
    iget-wide v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->customBackgroundBetweenScanPeriod:J

    goto :goto_0

    .line 200
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->lowBackgroundBetweenScanPeriod:J

    goto :goto_0
.end method

.method public getBackgroundScanPeriod()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 204
    iget-object v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->scanMode:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    sget-object v1, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;->HIGH:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    if-ne v0, v1, :cond_0

    .line 205
    iget-wide v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->highBackgroundScanPeriod:J

    .line 211
    :goto_0
    return-wide v0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->scanMode:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    sget-object v1, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;->NEVER:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    if-ne v0, v1, :cond_1

    .line 207
    const-wide/16 v0, 0x3e8

    goto :goto_0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->scanMode:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    sget-object v1, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;->CUSTOM:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    if-ne v0, v1, :cond_2

    .line 209
    iget-wide v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->customBackgroundScanPeriod:J

    goto :goto_0

    .line 211
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->lowBackgroundScanPeriod:J

    goto :goto_0
.end method

.method public getForegroundBetweenScanPeriod()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 182
    iget-object v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->scanMode:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    sget-object v1, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;->HIGH:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    if-ne v0, v1, :cond_0

    .line 183
    iget-wide v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->highForegroundBetweenScanPeriod:J

    .line 189
    :goto_0
    return-wide v0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->scanMode:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    sget-object v1, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;->NEVER:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    if-ne v0, v1, :cond_1

    .line 185
    const-wide/32 v0, 0x2932e00

    goto :goto_0

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->scanMode:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    sget-object v1, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;->CUSTOM:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    if-ne v0, v1, :cond_2

    .line 187
    iget-wide v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->customForegroundBetweenScanPeriod:J

    goto :goto_0

    .line 189
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->lowForegroundBetweenScanPeriod:J

    goto :goto_0
.end method

.method public getForegroundScanPeriod()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 171
    iget-object v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->scanMode:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    sget-object v1, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;->HIGH:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    if-ne v0, v1, :cond_0

    .line 172
    iget-wide v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->highForegroundScanPeriod:J

    .line 178
    :goto_0
    return-wide v0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->scanMode:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    sget-object v1, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;->NEVER:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    if-ne v0, v1, :cond_1

    .line 174
    const-wide/16 v0, 0x3e8

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->scanMode:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    sget-object v1, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;->CUSTOM:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    if-ne v0, v1, :cond_2

    .line 176
    iget-wide v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->customForegroundScanPeriod:J

    goto :goto_0

    .line 178
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->lowForegroundScanPeriod:J

    goto :goto_0
.end method

.method public getScanMode()Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->scanMode:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    return-object v0
.end method

.method public setBackgroundBetweenScanPeriod(JJ)V
    .locals 1
    .param p1, "highBackgroundBetweenScanPeriod"    # J
    .param p3, "lowBackgroundBetweenScanPeriod"    # J

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->highBackgroundBetweenScanPeriod:J

    .line 145
    iput-wide p3, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->lowBackgroundBetweenScanPeriod:J

    .line 146
    return-void
.end method

.method public setBackgroundScanPeriod(JJ)V
    .locals 1
    .param p1, "highBackgroundScanPeriod"    # J
    .param p3, "lowBackgroundScanPeriod"    # J

    .prologue
    .line 139
    iput-wide p1, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->highBackgroundScanPeriod:J

    .line 140
    iput-wide p3, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->lowBackgroundScanPeriod:J

    .line 141
    return-void
.end method

.method public setCustomBackgroundBetweenScanPeriod(J)V
    .locals 1
    .param p1, "between"    # J

    .prologue
    .line 161
    iput-wide p1, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->customBackgroundBetweenScanPeriod:J

    .line 162
    return-void
.end method

.method public setCustomBackgroundScanPeriod(J)V
    .locals 1
    .param p1, "between"    # J

    .prologue
    .line 157
    iput-wide p1, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->customBackgroundScanPeriod:J

    .line 158
    return-void
.end method

.method public setCustomForegroundBetweenScanPeriod(J)V
    .locals 1
    .param p1, "between"    # J

    .prologue
    .line 153
    iput-wide p1, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->customForegroundBetweenScanPeriod:J

    .line 154
    return-void
.end method

.method public setCustomForegroundScanPeriod(J)V
    .locals 1
    .param p1, "period"    # J

    .prologue
    .line 149
    iput-wide p1, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->customForegroundScanPeriod:J

    .line 150
    return-void
.end method

.method public setForegroundBetweenScanPeriod(JJ)V
    .locals 1
    .param p1, "highForegroundBetweenScanPeriod"    # J
    .param p3, "lowForegroundBetweenScanPeriod"    # J

    .prologue
    .line 134
    iput-wide p1, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->highForegroundBetweenScanPeriod:J

    .line 135
    iput-wide p3, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->lowForegroundBetweenScanPeriod:J

    .line 136
    return-void
.end method

.method public setForegroundScanPeriod(JJ)V
    .locals 1
    .param p1, "highForegroundScanPeriod"    # J
    .param p3, "lowForegroundScanPeriod"    # J

    .prologue
    .line 129
    iput-wide p1, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->highForegroundScanPeriod:J

    .line 130
    iput-wide p3, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->lowForegroundScanPeriod:J

    .line 131
    return-void
.end method

.method public setScanMode(Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;)V
    .locals 0
    .param p1, "scanMode"    # Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    .prologue
    .line 165
    if-eqz p1, :cond_0

    .line 166
    iput-object p1, p0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod;->scanMode:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician$ScanPeriod$ScanMode;

    .line 168
    :cond_0
    return-void
.end method

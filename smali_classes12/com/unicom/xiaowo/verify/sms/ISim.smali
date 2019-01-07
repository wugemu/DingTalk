.class public interface abstract Lcom/unicom/xiaowo/verify/sms/ISim;
.super Ljava/lang/Object;
.source "ISim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unicom/xiaowo/verify/sms/ISim$UnsupportedException;
    }
.end annotation


# static fields
.field public static final INVALID_SUBID:J = -0x3e8L

.field public static final SIM_CARD_1:I = 0x0

.field public static final SIM_CARD_2:I = 0x1


# virtual methods
.method public abstract getIMEI(I)Ljava/lang/String;
.end method

.method public abstract getIMSI(I)Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNetworkOperator(I)Ljava/lang/String;
.end method

.method public abstract getSimOperator(I)Ljava/lang/String;
.end method

.method public abstract getSimSerialNumber(I)Ljava/lang/String;
.end method

.method public abstract getSimState(I)I
.end method

.method public abstract getSubId(I)J
.end method

.method public abstract isDataConnectEnabled(I)Z
.end method

.method public abstract isNetworkRoaming(I)Z
.end method

.method public abstract isReady()Z
.end method

.method public abstract sendDataMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z
.end method

.method public abstract sendTextMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z
.end method

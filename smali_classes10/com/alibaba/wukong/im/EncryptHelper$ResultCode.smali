.class public Lcom/alibaba/wukong/im/EncryptHelper$ResultCode;
.super Ljava/lang/Object;
.source "EncryptHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/EncryptHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultCode"
.end annotation


# static fields
.field public static final FAILURE_TEMPORARILY:I = 0x3

.field public static final SUCCESS:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Lcom/alibaba/wukong/auth/ALoginParam;
.super Ljava/lang/Object;
.source "ALoginParam.java"


# instance fields
.field public domain:Ljava/lang/String;

.field public nonce:Ljava/lang/String;

.field public openId:J

.field public signature:Ljava/lang/String;

.field public timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

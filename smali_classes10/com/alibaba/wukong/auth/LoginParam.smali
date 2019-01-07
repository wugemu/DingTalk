.class public Lcom/alibaba/wukong/auth/LoginParam;
.super Ljava/lang/Object;
.source "LoginParam.java"


# instance fields
.field public appKey:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public domain:Ljava/lang/String;

.field public nickname:Ljava/lang/String;

.field public openId:J

.field public secretToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

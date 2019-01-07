.class public Lcom/alibaba/wukong/auth/AuthParam;
.super Ljava/lang/Object;
.source "AuthParam.java"


# instance fields
.field public appKey:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public appSecret:Ljava/lang/String;

.field public domain:Ljava/lang/String;

.field public nickname:Ljava/lang/String;

.field public openId:Ljava/lang/Long;

.field public openSecret:Ljava/lang/String;

.field public org:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

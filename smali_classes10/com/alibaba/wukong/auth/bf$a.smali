.class Lcom/alibaba/wukong/auth/bf$a;
.super Ljava/lang/Object;
.source "LocalMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/auth/bf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static by:Lcom/alibaba/wukong/auth/bf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/alibaba/wukong/auth/bf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/wukong/auth/bf;-><init>(Lcom/alibaba/wukong/auth/bf$1;)V

    sput-object v0, Lcom/alibaba/wukong/auth/bf$a;->by:Lcom/alibaba/wukong/auth/bf;

    return-void
.end method

.method static synthetic u()Lcom/alibaba/wukong/auth/bf;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/alibaba/wukong/auth/bf$a;->by:Lcom/alibaba/wukong/auth/bf;

    return-object v0
.end method

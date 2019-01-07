.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$b;
.super Ljava/lang/Object;
.source "CSpaceOnlineEditStatisticFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:J

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "userId"    # J
    .param p3, "userName"    # Ljava/lang/String;

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$b;->a:J

    .line 313
    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$b;->b:Ljava/lang/String;

    .line 314
    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/String;B)V
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Ljava/lang/String;

    .prologue
    .line 307
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$b;-><init>(JLjava/lang/String;)V

    return-void
.end method

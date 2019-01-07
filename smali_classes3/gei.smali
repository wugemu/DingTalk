.class public final Lgei;
.super Ljava/lang/Object;
.source "DentryWrapper.java"


# instance fields
.field public a:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

.field public b:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/dingtalk/cspace/model/CsDentry;Z)V
    .locals 0
    .param p1, "csDentry"    # Lcom/alibaba/dingtalk/cspace/model/CsDentry;
    .param p2, "selected"    # Z

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lgei;->a:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    .line 21
    iput-boolean p2, p0, Lgei;->b:Z

    .line 22
    return-void
.end method

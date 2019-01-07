.class final Lbbo$51;
.super Ljava/lang/Object;
.source "DingDataCenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lbfj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lbfi;

.field final synthetic d:Lbbo;


# direct methods
.method constructor <init>(Lbbo;Lcom/alibaba/wukong/Callback;Ljava/util/List;Lbfi;)V
    .locals 0
    .param p1, "this$0"    # Lbbo;

    .prologue
    .line 4030
    iput-object p1, p0, Lbbo$51;->d:Lbbo;

    iput-object p2, p0, Lbbo$51;->a:Lcom/alibaba/wukong/Callback;

    iput-object p3, p0, Lbbo$51;->b:Ljava/util/List;

    iput-object p4, p0, Lbbo$51;->c:Lbfi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4030
    check-cast p1, Lbfj;

    .line 5033
    if-nez p1, :cond_0

    .line 5034
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "createEventsWrapper failed, eventsWrapperCreationObject is null."

    aput-object v1, v0, v6

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 5035
    iget-object v0, p0, Lbbo$51;->a:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "createEventsWrapper failed, eventsWrapperCreationObject is null."

    invoke-static {v0, v1, v2}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 5036
    :goto_0
    return-void

    .line 5039
    :cond_0
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v0

    .line 6028
    iget-wide v1, p1, Lbfj;->b:J

    .line 5040
    iget-object v3, p0, Lbbo$51;->b:Ljava/util/List;

    .line 5042
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 5039
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(JLjava/util/List;J)V

    .line 5045
    invoke-static {}, Lbhi;->a()Lbhi;

    move-result-object v0

    .line 7028
    iget-wide v2, p1, Lbfj;->b:J

    .line 5045
    iget-object v1, p0, Lbbo$51;->c:Lbfi;

    .line 7132
    iget-wide v4, v1, Lbfi;->h:J

    .line 5045
    invoke-virtual {v0, v2, v3, v4, v5}, Lbhi;->a(JJ)V

    .line 5047
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "createEventsWrapper success."

    aput-object v1, v0, v6

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 5048
    iget-object v0, p0, Lbbo$51;->a:Lcom/alibaba/wukong/Callback;

    .line 8028
    iget-wide v2, p1, Lbfj;->b:J

    .line 5048
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 4057
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "createEventsWrapper failed, error:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", code:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 4058
    iget-object v0, p0, Lbbo$51;->a:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, p1, p2}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 4059
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 4053
    return-void
.end method

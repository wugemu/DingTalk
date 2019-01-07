.class public final Ldkg$1;
.super Ljava/lang/Object;
.source "OAActionUtils.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldkg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ldkg$a;

.field final synthetic c:Ldkg;


# direct methods
.method public constructor <init>(Ldkg;JLdkg$a;)V
    .locals 0
    .param p1, "this$0"    # Ldkg;

    .prologue
    .line 65
    iput-object p1, p0, Ldkg$1;->c:Ldkg;

    iput-wide p2, p0, Ldkg$1;->a:J

    iput-object p4, p0, Ldkg$1;->b:Ldkg$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    check-cast p1, Ljava/lang/String;

    .line 1068
    iget-object v0, p0, Ldkg$1;->c:Ldkg;

    iget-object v0, v0, Ldkg;->a:Ljava/util/HashMap;

    iget-wide v2, p0, Ldkg$1;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    const/4 v1, 0x0

    .line 1071
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v2, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionListDo;

    invoke-static {v0, p1, v2}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionListDo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1076
    :goto_0
    iget-object v1, p0, Ldkg$1;->b:Ldkg$a;

    if-eqz v1, :cond_0

    .line 1077
    if-eqz v0, :cond_0

    .line 1078
    iget-object v1, p0, Ldkg$1;->b:Ldkg$a;

    invoke-interface {v1, v0}, Ldkg$a;->a(Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionListDo;)V

    .line 1083
    :cond_0
    iget-object v0, p0, Ldkg$1;->c:Ldkg;

    iget-wide v0, p0, Ldkg$1;->a:J

    .line 2034
    invoke-static {v0, v1}, Ldkg;->a(J)V

    .line 65
    return-void

    .line 1072
    :catch_0
    move-exception v0

    .line 1073
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 93
    iget-object v0, p0, Ldkg$1;->c:Ldkg;

    iget-object v0, v0, Ldkg;->a:Ljava/util/HashMap;

    iget-wide v2, p0, Ldkg$1;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Ldkg$1;->c:Ldkg;

    iget-wide v0, p0, Ldkg$1;->a:J

    .line 1034
    invoke-static {v0, v1}, Ldkg;->a(J)V

    .line 98
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 89
    return-void
.end method

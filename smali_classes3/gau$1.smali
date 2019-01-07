.class final Lgau$1;
.super Ljava/lang/Object;
.source "FavoriteUserHandler.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgau;->a(JILgau$a;)V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:Lgau;


# direct methods
.method constructor <init>(Lgau;JI)V
    .locals 0
    .param p1, "this$0"    # Lgau;

    .prologue
    .line 68
    iput-object p1, p0, Lgau$1;->c:Lgau;

    iput-wide p2, p0, Lgau$1;->a:J

    iput p4, p0, Lgau$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 68
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1071
    if-eqz p1, :cond_0

    .line 1072
    iget-object v0, p0, Lgau$1;->c:Lgau;

    invoke-static {v0}, Lgau;->a(Lgau;)Ljava/util/HashMap;

    move-result-object v0

    iget-wide v2, p0, Lgau$1;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    :cond_0
    iget-object v0, p0, Lgau$1;->c:Lgau;

    iget-wide v2, p0, Lgau$1;->a:J

    iget v1, p0, Lgau$1;->b:I

    invoke-static {v0, v2, v3, v1}, Lgau;->a(Lgau;JI)V

    .line 68
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 84
    iget-object v0, p0, Lgau$1;->c:Lgau;

    iget-wide v2, p0, Lgau$1;->a:J

    iget v1, p0, Lgau$1;->b:I

    invoke-static {v0, v2, v3, v1}, Lgau;->a(Lgau;JI)V

    .line 85
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 80
    return-void
.end method

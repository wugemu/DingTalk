.class final Lbhg$1;
.super Ljava/lang/Object;
.source "DingDraftManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbhg;->a(ILcma;)V
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
        "Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lbhg;


# direct methods
.method constructor <init>(Lbhg;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbhg;

    .prologue
    .line 118
    iput-object p1, p0, Lbhg$1;->b:Lbhg;

    iput-object p2, p0, Lbhg$1;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 118
    check-cast p1, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;

    .line 1121
    if-eqz p1, :cond_0

    .line 1122
    iget-object v0, p0, Lbhg$1;->b:Lbhg;

    iget-object v1, p0, Lbhg$1;->a:Lcma;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lbhg;->a(Lbhg;Lcma;Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 1124
    :cond_0
    iget-object v0, p0, Lbhg$1;->b:Lbhg;

    iget-object v1, p0, Lbhg$1;->a:Lcma;

    const-string/jumbo v2, "-1"

    const-string/jumbo v3, "draft object is null."

    invoke-static {v0, v1, v2, v3}, Lbhg;->a(Lbhg;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 135
    iget-object v0, p0, Lbhg$1;->b:Lbhg;

    iget-object v1, p0, Lbhg$1;->a:Lcma;

    invoke-static {v0, v1, p1, p2}, Lbhg;->a(Lbhg;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 131
    return-void
.end method

.class final Ldwn$7;
.super Ljava/lang/Object;
.source "WorkItemBoxViewHolder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldwn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/models/WorkItemObject;

.field final synthetic b:Ldwn;


# direct methods
.method constructor <init>(Ldwn;Lcom/alibaba/android/dingtalkim/models/WorkItemObject;)V
    .locals 0
    .param p1, "this$0"    # Ldwn;

    .prologue
    .line 384
    iput-object p1, p0, Ldwn$7;->b:Ldwn;

    iput-object p2, p0, Ldwn$7;->a:Lcom/alibaba/android/dingtalkim/models/WorkItemObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 387
    iget-object v0, p0, Ldwn$7;->b:Ldwn;

    iget-object v1, p0, Ldwn$7;->a:Lcom/alibaba/android/dingtalkim/models/WorkItemObject;

    .line 1311
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "remove_key_oa_todo"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1312
    const-string/jumbo v3, "key_oa_todo_id"

    iget-wide v4, v1, Lcom/alibaba/android/dingtalkim/models/WorkItemObject;->id:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1313
    iget-object v0, v0, Ldwn;->d:Landroid/app/Activity;

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v2}, Ldq;->a(Landroid/content/Intent;)Z

    .line 388
    return-void
.end method

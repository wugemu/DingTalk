.class final Lgfo$8$1;
.super Ljava/lang/Object;
.source "PermissionSettingListViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgfo$8;->onException(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgfo$8;


# direct methods
.method constructor <init>(Lgfo$8;)V
    .locals 0
    .param p1, "this$1"    # Lgfo$8;

    .prologue
    .line 620
    iput-object p1, p0, Lgfo$8$1;->a:Lgfo$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 623
    iget-object v0, p0, Lgfo$8$1;->a:Lgfo$8;

    iget-object v0, v0, Lgfo$8;->b:Lgfo;

    iget-object v0, v0, Lgfo;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lgfo$8$1;->a:Lgfo$8;

    iget-object v1, v1, Lgfo$8;->d:Lgfo;

    sget v1, Lfzs$h;->dt_cspace_acl_member_dept_info_none:I

    .line 1070
    invoke-static {v1}, Lgfo;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 623
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    return-void
.end method

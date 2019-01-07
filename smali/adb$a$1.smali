.class final Ladb$a$1;
.super Ljava/lang/Object;
.source "MailSignAdminOptionListAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ladb$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lacz$a;

.field final synthetic b:Ladb$a;


# direct methods
.method constructor <init>(Ladb$a;Lacz$a;)V
    .locals 0
    .param p1, "this$1"    # Ladb$a;

    .prologue
    .line 141
    iput-object p1, p0, Ladb$a$1;->b:Ladb$a;

    iput-object p2, p0, Ladb$a$1;->a:Lacz$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 144
    iget-object v0, p0, Ladb$a$1;->b:Ladb$a;

    iget-object v0, v0, Ladb$a;->c:Ladb;

    invoke-static {v0}, Ladb;->a(Ladb;)Landroid/widget/CompoundButton;

    move-result-object v0

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Ladb$a$1;->b:Ladb$a;

    iget-object v0, v0, Ladb$a;->c:Ladb;

    invoke-static {v0, p1}, Ladb;->a(Ladb;Landroid/widget/CompoundButton;)Landroid/widget/CompoundButton;

    .line 146
    iget-object v0, p0, Ladb$a$1;->b:Ladb$a;

    iget-object v0, v0, Ladb$a;->c:Ladb;

    invoke-static {v0}, Ladb;->b(Ladb;)Ladb$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Ladb$a$1;->b:Ladb$a;

    iget-object v0, v0, Ladb$a;->c:Ladb;

    invoke-static {v0}, Ladb;->b(Ladb;)Ladb$b;

    move-result-object v0

    iget-object v1, p0, Ladb$a$1;->a:Lacz$a;

    invoke-interface {v0, v1, p2}, Ladb$b;->a(Lacz$a;Z)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Ladb$a$1;->b:Ladb$a;

    iget-object v0, v0, Ladb$a;->c:Ladb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ladb;->a(Ladb;Landroid/widget/CompoundButton;)Landroid/widget/CompoundButton;

    goto :goto_0
.end method

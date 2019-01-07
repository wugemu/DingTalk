.class final Lgrq$1;
.super Ljava/lang/Object;
.source "ChooseFileTypeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgrq;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/CharSequence;

.field final synthetic b:Lgrq;


# direct methods
.method constructor <init>(Lgrq;[Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$0"    # Lgrq;

    .prologue
    .line 51
    iput-object p1, p0, Lgrq$1;->b:Lgrq;

    iput-object p2, p0, Lgrq$1;->a:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 54
    iget-object v0, p0, Lgrq$1;->b:Lgrq;

    .line 1017
    iget-object v0, v0, Lgrq;->a:Lgrq$a;

    .line 54
    if-nez v0, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 70
    :goto_1
    iget-object v0, p0, Lgrq$1;->b:Lgrq;

    .line 5017
    iget-object v0, v0, Lgrq;->a:Lgrq$a;

    .line 70
    invoke-interface {v0, p1}, Lgrq$a;->a(Landroid/content/DialogInterface;)V

    goto :goto_0

    .line 59
    :pswitch_0
    iget-object v0, p0, Lgrq$1;->b:Lgrq;

    .line 2017
    iget-object v0, v0, Lgrq;->a:Lgrq$a;

    .line 59
    sget-object v1, Lcom/alibaba/dingtalk/doclens/DocFileType;->IMAGE:Lcom/alibaba/dingtalk/doclens/DocFileType;

    invoke-interface {v0, p1, v1}, Lgrq$a;->a(Landroid/content/DialogInterface;Lcom/alibaba/dingtalk/doclens/DocFileType;)V

    goto :goto_0

    .line 62
    :pswitch_1
    iget-object v0, p0, Lgrq$1;->a:[Ljava/lang/CharSequence;

    array-length v0, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 63
    iget-object v0, p0, Lgrq$1;->b:Lgrq;

    .line 3017
    iget-object v0, v0, Lgrq;->a:Lgrq$a;

    .line 63
    sget-object v1, Lcom/alibaba/dingtalk/doclens/DocFileType;->PDF:Lcom/alibaba/dingtalk/doclens/DocFileType;

    invoke-interface {v0, p1, v1}, Lgrq$a;->a(Landroid/content/DialogInterface;Lcom/alibaba/dingtalk/doclens/DocFileType;)V

    goto :goto_0

    .line 64
    :cond_2
    iget-object v0, p0, Lgrq$1;->a:[Ljava/lang/CharSequence;

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.class final Ladc$4;
.super Ljava/lang/Object;
.source "MailSignListAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ladc;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laca;

.field final synthetic b:Ladc;


# direct methods
.method constructor <init>(Ladc;Laca;)V
    .locals 0
    .param p1, "this$0"    # Ladc;

    .prologue
    .line 279
    iput-object p1, p0, Ladc$4;->b:Ladc;

    iput-object p2, p0, Ladc$4;->a:Laca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 292
    iget-object v0, p0, Ladc$4;->a:Laca;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Laca;->j:Ljava/lang/String;

    .line 293
    iget-object v0, p0, Ladc$4;->b:Ladc;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ladc;->a(Ladc;Z)Z

    .line 294
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 283
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 288
    return-void
.end method

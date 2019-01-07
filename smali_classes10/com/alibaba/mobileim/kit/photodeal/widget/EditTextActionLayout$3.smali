.class final Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout$3;
.super Ljava/lang/Object;
.source "EditTextActionLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout$3;->a:Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout$3;->a:Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;

    invoke-static {v0}, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->c(Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout$3;->a:Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;

    invoke-static {v1}, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->b(Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 138
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout$3;->a:Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;

    invoke-static {v0}, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->c(Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout$3;->a:Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;

    invoke-static {v1}, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->b(Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 139
    return-void
.end method

.class final Lfin$1;
.super Ljava/lang/Object;
.source "BaseContactAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfin;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:I

.field final synthetic d:Lfin;


# direct methods
.method constructor <init>(Lfin;Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "this$0"    # Lfin;

    .prologue
    .line 96
    .local p0, "this":Lfin$1;, "Lfin$1;"
    iput-object p1, p0, Lfin$1;->d:Lfin;

    iput-object p2, p0, Lfin$1;->a:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;

    iput-object p3, p0, Lfin$1;->b:Ljava/lang/Object;

    iput p4, p0, Lfin$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 99
    .local p0, "this":Lfin$1;, "Lfin$1;"
    iget-object v0, p0, Lfin$1;->a:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;

    iget-object v1, p0, Lfin$1;->b:Ljava/lang/Object;

    iget v2, p0, Lfin$1;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;->a(Ljava/lang/Object;I)V

    .line 100
    return-void
.end method

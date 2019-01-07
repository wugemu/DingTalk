.class final Lfhv$1;
.super Ljava/lang/Object;
.source "OrgNewContactAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfhv;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder;

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

.field final synthetic c:I

.field final synthetic d:Lfhv;


# direct methods
.method constructor <init>(Lfhv;Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;I)V
    .locals 0
    .param p1, "this$0"    # Lfhv;

    .prologue
    .line 153
    iput-object p1, p0, Lfhv$1;->d:Lfhv;

    iput-object p2, p0, Lfhv$1;->a:Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder;

    iput-object p3, p0, Lfhv$1;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iput p4, p0, Lfhv$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 156
    iget-object v0, p0, Lfhv$1;->a:Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder;

    iget-object v1, p0, Lfhv$1;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    .line 157
    return-void
.end method

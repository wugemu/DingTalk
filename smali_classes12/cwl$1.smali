.class final Lcwl$1;
.super Ljava/lang/Object;
.source "MultiLinkViewHolder.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcwl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcwl;


# direct methods
.method constructor <init>(Lcwl;)V
    .locals 0
    .param p1, "this$0"    # Lcwl;

    .prologue
    .line 173
    iput-object p1, p0, Lcwl$1;->a:Lcwl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 177
    .local v5, "tag":Ljava/lang/Object;
    if-eqz v5, :cond_0

    instance-of v6, v5, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    if-eqz v6, :cond_0

    move-object v2, v5

    .line 178
    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    .line 179
    .local v2, "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    iget-object v6, p0, Lcwl$1;->a:Lcwl;

    invoke-static {v6, v2}, Lcwl;->a(Lcwl;Lcom/alibaba/wukong/im/MessageContent$LinkedContent;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 217
    .end local v2    # "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    :cond_0
    :goto_0
    return v8

    .line 182
    .restart local v2    # "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v4, "menuObjectList":Ljava/util/List;, "Ljava/util/List<Lcng;>;"
    new-instance v3, Lcng;

    const/4 v6, 0x0

    sget v7, Lctk$i;->chat_menu_forward:I

    invoke-direct {v3, v6, v7}, Lcng;-><init>(II)V

    .line 184
    .local v3, "menuObject":Lcng;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v3, Lcng;

    .end local v3    # "menuObject":Lcng;
    sget v6, Lctk$i;->chat_menu_favorite:I

    invoke-direct {v3, v8, v6}, Lcng;-><init>(II)V

    .line 186
    .restart local v3    # "menuObject":Lcng;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v0, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;-><init>(Landroid/content/Context;)V

    .line 188
    .local v0, "adapter":Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Ljava/util/List;)V

    .line 189
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 190
    .local v1, "dialogBuilder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    new-instance v6, Lcwl$1$1;

    invoke-direct {v6, p0, v0, p1, v2}, Lcwl$1$1;-><init>(Lcwl$1;Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;Landroid/view/View;Lcom/alibaba/wukong/im/MessageContent$LinkedContent;)V

    invoke-virtual {v1, v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 215
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

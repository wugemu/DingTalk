.class final Lcom/alibaba/android/user/widget/MoreMenuDialog$a;
.super Lfxq;
.source "MoreMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/widget/MoreMenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfxq",
        "<",
        "Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/widget/MoreMenuDialog;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/user/widget/MoreMenuDialog;Landroid/app/Activity;)V
    .locals 0
    .param p2, "context"    # Landroid/app/Activity;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/alibaba/android/user/widget/MoreMenuDialog$a;->a:Lcom/alibaba/android/user/widget/MoreMenuDialog;

    .line 101
    invoke-direct {p0, p2}, Lfxq;-><init>(Landroid/app/Activity;)V

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/user/widget/MoreMenuDialog;Landroid/app/Activity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/user/widget/MoreMenuDialog;
    .param p2, "x1"    # Landroid/app/Activity;

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/user/widget/MoreMenuDialog$a;-><init>(Lcom/alibaba/android/user/widget/MoreMenuDialog;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 108
    if-nez p2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/alibaba/android/user/widget/MoreMenuDialog$a;->i:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lezg$j;->user_list_more_item_layout:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 111
    new-instance v1, Lcom/alibaba/android/user/widget/MoreMenuDialog$c;

    iget-object v2, p0, Lcom/alibaba/android/user/widget/MoreMenuDialog$a;->a:Lcom/alibaba/android/user/widget/MoreMenuDialog;

    invoke-direct {v1, v2, v5}, Lcom/alibaba/android/user/widget/MoreMenuDialog$c;-><init>(Lcom/alibaba/android/user/widget/MoreMenuDialog;B)V

    .line 112
    .local v1, "viewHolder":Lcom/alibaba/android/user/widget/MoreMenuDialog$c;
    sget v2, Lezg$h;->if_icon:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v2, v1, Lcom/alibaba/android/user/widget/MoreMenuDialog$c;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 113
    sget v2, Lezg$h;->tv_title:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/alibaba/android/user/widget/MoreMenuDialog$c;->b:Landroid/widget/TextView;

    .line 114
    sget v2, Lezg$h;->view_divider:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/user/widget/MoreMenuDialog$c;->c:Landroid/view/View;

    .line 116
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 121
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/widget/MoreMenuDialog$a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;

    .line 123
    .local v0, "menuItem":Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;
    if-nez v0, :cond_1

    .line 138
    :goto_1
    return-object p2

    .line 118
    .end local v0    # "menuItem":Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;
    .end local v1    # "viewHolder":Lcom/alibaba/android/user/widget/MoreMenuDialog$c;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/widget/MoreMenuDialog$c;

    .restart local v1    # "viewHolder":Lcom/alibaba/android/user/widget/MoreMenuDialog$c;
    goto :goto_0

    .line 127
    .restart local v0    # "menuItem":Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;
    :cond_1
    iget-object v2, v1, Lcom/alibaba/android/user/widget/MoreMenuDialog$c;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-static {v0}, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;->access$200(Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 128
    iget-object v2, v1, Lcom/alibaba/android/user/widget/MoreMenuDialog$c;->b:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;->access$300(Lcom/alibaba/android/user/widget/MoreMenuDialog$MoreMenuItem;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 130
    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/MoreMenuDialog$a;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_2

    .line 131
    iget-object v2, v1, Lcom/alibaba/android/user/widget/MoreMenuDialog$c;->c:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 134
    :cond_2
    iget-object v2, v1, Lcom/alibaba/android/user/widget/MoreMenuDialog$c;->c:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.class final Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$a;
.super Landroid/widget/BaseAdapter;
.source "CMailSettingsShowInnerPicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$a$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$a;->b:Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 58
    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$a;->c:Landroid/content/Context;

    .line 59
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$a;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 66
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$a;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 69
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 74
    if-nez p2, :cond_0

    .line 75
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$a;->c:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Laxo$g;->cmail_setting_show_inner_pic_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 76
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$a$a;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$a$a;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$a;)V

    .line 77
    .local v0, "holder":Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$a$a;
    sget v1, Laxo$f;->label:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$a;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    sget v1, Laxo$f;->check_icon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$a$a;->a:Landroid/view/View;

    .line 79
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 83
    :goto_0
    iget-object v2, v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$a$a;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$a;->b:Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    return-object p2

    .line 81
    .end local v0    # "holder":Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$a$a;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$a$a;

    .restart local v0    # "holder":Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$a$a;
    goto :goto_0

    .line 83
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

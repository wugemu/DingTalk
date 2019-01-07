.class final Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$1;
.super Ljava/lang/Object;
.source "CMailSettingsShowInnerPicActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;

    invoke-static {v0, p3}, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;I)I

    .line 1333
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "pref_key_guide_show_content_image"

    invoke-static {v0, v1, p3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 39
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;)Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$a;->notifyDataSetChanged()V

    .line 40
    return-void
.end method

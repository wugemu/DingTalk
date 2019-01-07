.class final Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment$a;
.super Lrq;
.source "CMailEventAttendeeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrq",
        "<",
        "Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;Landroid/content/Context;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "layoutRes"    # I

    .prologue
    .line 179
    iput-object p1, p0, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment$a;->a:Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    .line 180
    invoke-direct {p0, p2, p3}, Lrq;-><init>(Landroid/content/Context;I)V

    .line 181
    return-void
.end method


# virtual methods
.method protected final synthetic a(Lrr;Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v8, 0x8

    .line 177
    check-cast p2, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;

    .line 1185
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1186
    :cond_0
    :goto_0
    return-void

    .line 1188
    :cond_1
    sget v0, Laxo$f;->avatar:I

    .line 2100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1188
    check-cast v0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    .line 1189
    const v1, 0x1020016

    .line 3100
    invoke-virtual {p1, v1}, Lrr;->a(I)Landroid/view/View;

    move-result-object v1

    .line 1189
    check-cast v1, Landroid/widget/TextView;

    .line 1190
    const v2, 0x1020014

    .line 4100
    invoke-virtual {p1, v2}, Lrr;->a(I)Landroid/view/View;

    move-result-object v2

    .line 1190
    check-cast v2, Landroid/widget/TextView;

    .line 1191
    const v3, 0x1020015

    .line 5100
    invoke-virtual {p1, v3}, Lrr;->a(I)Landroid/view/View;

    move-result-object v3

    .line 1191
    check-cast v3, Landroid/widget/TextView;

    .line 1193
    const v4, 0x1020006

    .line 6100
    invoke-virtual {p1, v4}, Lrr;->a(I)Landroid/view/View;

    move-result-object v4

    .line 1193
    check-cast v4, Landroid/widget/TextView;

    .line 1196
    invoke-virtual {p2}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->getAttendeeEmail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment$a;->a:Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    invoke-static {v7}, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->a(Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;)Z

    move-result v7

    invoke-virtual {v0, v5, v6, v7}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1198
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1200
    invoke-static {}, Lafc;->a()Lafc;

    move-result-object v0

    .line 1201
    invoke-virtual {p2}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->getAttendeeEmail()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment$a;->a:Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    invoke-static {v5}, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->b(Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;)Ljava/lang/String;

    move-result-object v5

    .line 1200
    invoke-virtual {v0, v1, v5}, Lafc;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 1202
    if-eqz v5, :cond_2

    .line 7096
    iget-object v0, p1, Lrr;->a:Landroid/content/Context;

    .line 1203
    sget v1, Laxo$c;->ui_common_content_fg_color:I

    invoke-static {v0, v1}, Ldp;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1208
    :goto_1
    const/4 v0, 0x0

    .line 1209
    iget-object v1, p0, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment$a;->a:Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->c(Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1210
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment$a;->a:Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;->c(Lcom/alibaba/alimei/calendar/fragment/CMailEventAttendeeFragment;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->getAttendeeEmail()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;

    move-object v1, v0

    .line 1214
    :goto_2
    if-eqz v1, :cond_4

    .line 1215
    iget-object v0, v1, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientName:Ljava/lang/String;

    .line 1216
    if-eqz v5, :cond_3

    const/4 v5, 0x2

    iget v1, v1, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddressType:I

    if-ne v5, v1, :cond_3

    .line 1217
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1224
    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1225
    invoke-virtual {p2}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->getAttendeeEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 8096
    :cond_2
    iget-object v0, p1, Lrr;->a:Landroid/content/Context;

    .line 1205
    sget v1, Laxo$c;->ui_common_warming_bg_color:I

    invoke-static {v0, v1}, Ldp;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 1219
    :cond_3
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 1222
    :cond_4
    invoke-virtual {p2}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->getAttendeeEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laiv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object v1, v0

    goto :goto_2
.end method

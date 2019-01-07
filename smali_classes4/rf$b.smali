.class final Lrf$b;
.super Ljava/lang/Object;
.source "AttendeeListAdapter.java"

# interfaces
.implements Lrs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrs",
        "<",
        "Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrf;


# direct methods
.method private constructor <init>(Lrf;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lrf$b;->a:Lrf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lrf;B)V
    .locals 0
    .param p1, "x0"    # Lrf;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lrf$b;-><init>(Lrf;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 127
    sget v0, Laxo$g;->alm_cmail_fragment_mail_participant_item:I

    return v0
.end method

.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic a(Lrr;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v8, 0x8

    .line 123
    check-cast p2, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;

    .line 1137
    sget v0, Laxo$f;->avatar:I

    .line 2100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1137
    check-cast v0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    .line 1138
    const v1, 0x1020016

    .line 3100
    invoke-virtual {p1, v1}, Lrr;->a(I)Landroid/view/View;

    move-result-object v1

    .line 1138
    check-cast v1, Landroid/widget/TextView;

    .line 1139
    const v2, 0x1020014

    .line 4100
    invoke-virtual {p1, v2}, Lrr;->a(I)Landroid/view/View;

    move-result-object v2

    .line 1139
    check-cast v2, Landroid/widget/TextView;

    .line 1140
    const v3, 0x1020015

    .line 5100
    invoke-virtual {p1, v3}, Lrr;->a(I)Landroid/view/View;

    move-result-object v3

    .line 1140
    check-cast v3, Landroid/widget/TextView;

    .line 1142
    const v4, 0x1020006

    .line 6100
    invoke-virtual {p1, v4}, Lrr;->a(I)Landroid/view/View;

    move-result-object v4

    .line 1142
    check-cast v4, Landroid/widget/TextView;

    .line 1145
    invoke-virtual {p2}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->getAttendeeEmail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lrf$b;->a:Lrf;

    invoke-static {v7}, Lrf;->a(Lrf;)Z

    move-result v7

    invoke-virtual {v0, v5, v6, v7}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1147
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1149
    invoke-static {}, Lafc;->a()Lafc;

    move-result-object v0

    .line 1150
    invoke-virtual {p2}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->getAttendeeEmail()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lrf$b;->a:Lrf;

    invoke-static {v5}, Lrf;->b(Lrf;)Ljava/lang/String;

    move-result-object v5

    .line 1149
    invoke-virtual {v0, v1, v5}, Lafc;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 1151
    if-eqz v5, :cond_0

    .line 7096
    iget-object v0, p1, Lrr;->a:Landroid/content/Context;

    .line 1152
    sget v1, Laxo$c;->ui_common_content_fg_color:I

    invoke-static {v0, v1}, Ldp;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1157
    :goto_0
    const/4 v0, 0x0

    .line 1158
    iget-object v1, p0, Lrf$b;->a:Lrf;

    invoke-static {v1}, Lrf;->c(Lrf;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1159
    iget-object v0, p0, Lrf$b;->a:Lrf;

    invoke-static {v0}, Lrf;->c(Lrf;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->getAttendeeEmail()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;

    move-object v1, v0

    .line 1163
    :goto_1
    if-eqz v1, :cond_2

    .line 1164
    iget-object v0, v1, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientName:Ljava/lang/String;

    .line 1165
    if-eqz v5, :cond_1

    const/4 v5, 0x2

    iget v1, v1, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddressType:I

    if-ne v5, v1, :cond_1

    .line 1166
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1173
    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1174
    invoke-virtual {p2}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->getAttendeeEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    return-void

    .line 8096
    :cond_0
    iget-object v0, p1, Lrr;->a:Landroid/content/Context;

    .line 1154
    sget v1, Laxo$c;->ui_common_warming_bg_color:I

    invoke-static {v0, v1}, Ldp;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1168
    :cond_1
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 1171
    :cond_2
    invoke-virtual {p2}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->getAttendeeEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laiv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

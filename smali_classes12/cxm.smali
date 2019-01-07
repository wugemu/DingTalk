.class public final Lcxm;
.super Lcts;
.source "ShieldViewHolder.java"


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcts;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .param p1, "conversationType"    # I

    .prologue
    .line 57
    return-void
.end method

.method public final a(J)V
    .locals 0
    .param p1, "conversationTag"    # J

    .prologue
    .line 52
    return-void
.end method

.method public final a(Landroid/app/Activity;JLcom/alibaba/wukong/im/Message;I)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "currentUid"    # J
    .param p4, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p5, "position"    # I

    .prologue
    .line 71
    invoke-super/range {p0 .. p5}, Lcts;->a(Landroid/app/Activity;JLcom/alibaba/wukong/im/Message;I)V

    .line 73
    invoke-static {p4}, Ldkc;->v(Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcxm;->a:Landroid/widget/TextView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lctk$i;->dt_message_shield_tip_message_file:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcxm;->a:Landroid/widget/TextView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lctk$i;->dt_message_shield_tip_message:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 61
    sget v0, Lctk$f;->chatting_content_tv:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcxm;->a:Landroid/widget/TextView;

    .line 62
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 41
    sget v0, Lctk$g;->chatting_item_system:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcxm;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcxm;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcxm;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcxm;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final l()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

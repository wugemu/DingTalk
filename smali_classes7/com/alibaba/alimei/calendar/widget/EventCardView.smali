.class public Lcom/alibaba/alimei/calendar/widget/EventCardView;
.super Landroid/widget/LinearLayout;
.source "EventCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/calendar/widget/EventCardView$a;
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/view/View;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field private k:Landroid/view/View;

.field private l:Landroid/view/ViewGroup;

.field private m:Lcom/alibaba/alimei/calendar/widget/EventCardView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 106
    invoke-direct {p0}, Lcom/alibaba/alimei/calendar/widget/EventCardView;->a()V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    invoke-direct {p0}, Lcom/alibaba/alimei/calendar/widget/EventCardView;->a()V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    invoke-direct {p0}, Lcom/alibaba/alimei/calendar/widget/EventCardView;->a()V

    .line 117
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/calendar/widget/EventCardView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/calendar/widget/EventCardView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView;->k:Landroid/view/View;

    return-object v0
.end method

.method private a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/alibaba/alimei/calendar/widget/EventCardView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Laxo$g;->cmail_view_event_card:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 121
    .local v1, "view":Landroid/view/View;
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 122
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/alimei/calendar/widget/EventCardView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    sget v2, Laxo$f;->event_month_view:I

    invoke-static {v1, v2}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView;->b:Landroid/widget/TextView;

    .line 125
    sget v2, Laxo$f;->event_day_view:I

    invoke-static {v1, v2}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView;->c:Landroid/widget/TextView;

    .line 126
    sget v2, Laxo$f;->event_date:I

    invoke-static {v1, v2}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView;->d:Landroid/widget/TextView;

    .line 127
    sget v2, Laxo$f;->event_time:I

    invoke-static {v1, v2}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView;->e:Landroid/widget/TextView;

    .line 128
    sget v2, Laxo$f;->event_cancel:I

    invoke-static {v1, v2}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iput-object v2, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView;->f:Landroid/view/View;

    .line 129
    sget v2, Laxo$f;->event_location:I

    invoke-static {v1, v2}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView;->g:Landroid/widget/TextView;

    .line 130
    sget v2, Laxo$f;->event_divider:I

    invoke-static {v1, v2}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iput-object v2, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView;->k:Landroid/view/View;

    .line 131
    sget v2, Laxo$f;->event_action_layout:I

    invoke-static {v1, v2}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView;->l:Landroid/view/ViewGroup;

    .line 132
    sget v2, Laxo$f;->event_accept:I

    invoke-static {v1, v2}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView;->h:Landroid/widget/TextView;

    .line 133
    sget v2, Laxo$f;->event_tentative:I

    invoke-static {v1, v2}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView;->i:Landroid/widget/TextView;

    .line 134
    sget v2, Laxo$f;->event_decline:I

    invoke-static {v1, v2}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView;->j:Landroid/widget/TextView;

    .line 1140
    iget-object v2, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView;->h:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1141
    iget-object v2, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView;->i:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1142
    iget-object v2, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView;->j:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    return-void
.end method

.method static synthetic b(Lcom/alibaba/alimei/calendar/widget/EventCardView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/calendar/widget/EventCardView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView;->l:Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 227
    .local v1, "id":I
    const/4 v0, -0x1

    .line 228
    .local v0, "action":I
    sget v2, Laxo$f;->event_accept:I

    if-ne v2, v1, :cond_2

    .line 229
    const/16 v0, 0x8

    .line 236
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView;->m:Lcom/alibaba/alimei/calendar/widget/EventCardView$a;

    if-eqz v2, :cond_1

    .line 237
    iget-object v2, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView;->m:Lcom/alibaba/alimei/calendar/widget/EventCardView$a;

    invoke-interface {v2, v0}, Lcom/alibaba/alimei/calendar/widget/EventCardView$a;->a(I)V

    .line 239
    :cond_1
    return-void

    .line 230
    :cond_2
    sget v2, Laxo$f;->event_tentative:I

    if-ne v2, v1, :cond_3

    .line 231
    const/16 v0, 0x9

    goto :goto_0

    .line 232
    :cond_3
    sget v2, Laxo$f;->event_decline:I

    if-ne v2, v1, :cond_0

    .line 233
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public setAttendeeStatus(I)V
    .locals 4
    .param p1, "attendeeStatus"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 259
    packed-switch p1, :pswitch_data_0

    .line 285
    :goto_0
    :pswitch_0
    return-void

    .line 261
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/calendar/widget/EventCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$e;->cmail_event_accept_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 262
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/calendar/widget/EventCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$c;->cmail_white_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 263
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/calendar/widget/EventCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$c;->cmail_event_text_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 266
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/calendar/widget/EventCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$c;->cmail_event_text_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 269
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/calendar/widget/EventCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$c;->cmail_event_text_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 271
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/calendar/widget/EventCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$e;->cmail_event_tentative_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/calendar/widget/EventCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$c;->cmail_white_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 273
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 274
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/calendar/widget/EventCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$c;->cmail_event_text_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 277
    :pswitch_3
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 278
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/calendar/widget/EventCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$c;->cmail_event_text_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 279
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 280
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/calendar/widget/EventCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$c;->cmail_event_text_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 281
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/calendar/widget/EventCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$e;->cmail_event_decline_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/calendar/widget/EventCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$c;->cmail_white_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setOnActionListener(Lcom/alibaba/alimei/calendar/widget/EventCardView$a;)V
    .locals 0
    .param p1, "onActionListener"    # Lcom/alibaba/alimei/calendar/widget/EventCardView$a;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView;->m:Lcom/alibaba/alimei/calendar/widget/EventCardView$a;

    .line 147
    return-void
.end method

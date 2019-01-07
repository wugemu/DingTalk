.class public final Lcom/im/av/view/WxAlertController;
.super Ljava/lang/Object;
.source "WxAlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/av/view/WxAlertController$AlertParams;,
        Lcom/im/av/view/WxAlertController$RecycleListView;,
        Lcom/im/av/view/WxAlertController$a;
    }
.end annotation


# instance fields
.field A:Landroid/widget/ImageView;

.field B:Landroid/widget/TextView;

.field C:Landroid/widget/TextView;

.field D:Landroid/view/View;

.field protected E:Z

.field F:Landroid/widget/ListAdapter;

.field G:I

.field H:Landroid/os/Handler;

.field I:I

.field J:Landroid/view/View$OnClickListener;

.field a:Landroid/view/View;

.field b:Landroid/view/View;

.field protected final c:Landroid/content/Context;

.field final d:Landroid/content/DialogInterface;

.field final e:Landroid/view/Window;

.field f:Ljava/lang/CharSequence;

.field g:Ljava/lang/CharSequence;

.field h:Landroid/widget/ListView;

.field i:Landroid/view/View;

.field j:I

.field k:I

.field l:I

.field m:I

.field n:Z

.field o:Landroid/widget/Button;

.field p:Ljava/lang/CharSequence;

.field q:Landroid/os/Message;

.field r:Landroid/widget/Button;

.field s:Ljava/lang/CharSequence;

.field t:Landroid/os/Message;

.field u:Landroid/widget/Button;

.field v:Ljava/lang/CharSequence;

.field w:Landroid/os/Message;

.field x:Landroid/widget/ScrollView;

.field y:I

.field z:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .prologue
    const/4 v0, 0x0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-boolean v0, p0, Lcom/im/av/view/WxAlertController;->n:Z

    .line 106
    iput v0, p0, Lcom/im/av/view/WxAlertController;->y:I

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/im/av/view/WxAlertController;->G:I

    .line 128
    new-instance v0, Lcom/im/av/view/WxAlertController$1;

    invoke-direct {v0, p0}, Lcom/im/av/view/WxAlertController$1;-><init>(Lcom/im/av/view/WxAlertController;)V

    iput-object v0, p0, Lcom/im/av/view/WxAlertController;->J:Landroid/view/View$OnClickListener;

    .line 177
    sget v0, Ljou$d;->im_alert_dialog:I

    iput v0, p0, Lcom/im/av/view/WxAlertController;->I:I

    .line 178
    iput-object p1, p0, Lcom/im/av/view/WxAlertController;->c:Landroid/content/Context;

    .line 179
    iput-object p2, p0, Lcom/im/av/view/WxAlertController;->d:Landroid/content/DialogInterface;

    .line 180
    iput-object p3, p0, Lcom/im/av/view/WxAlertController;->e:Landroid/view/Window;

    .line 182
    iget-object v0, p0, Lcom/im/av/view/WxAlertController;->e:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 183
    new-instance v0, Lcom/im/av/view/WxAlertController$a;

    invoke-direct {v0, p2}, Lcom/im/av/view/WxAlertController$a;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/im/av/view/WxAlertController;->H:Landroid/os/Handler;

    .line 184
    return-void
.end method

.method static a(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 205
    :goto_0
    return v2

    .line 191
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    .line 192
    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 195
    check-cast v1, Landroid/view/ViewGroup;

    .line 196
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 197
    .local v0, "i":I
    :cond_2
    if-lez v0, :cond_3

    .line 198
    add-int/lit8 v0, v0, -0x1

    .line 199
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 200
    invoke-static {p0}, Lcom/im/av/view/WxAlertController;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 205
    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .param p1, "resId"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 314
    iput p1, p0, Lcom/im/av/view/WxAlertController;->y:I

    .line 315
    iget-object v0, p0, Lcom/im/av/view/WxAlertController;->A:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 316
    if-lez p1, :cond_1

    .line 317
    iget-object v0, p0, Lcom/im/av/view/WxAlertController;->A:Landroid/widget/ImageView;

    iget v1, p0, Lcom/im/av/view/WxAlertController;->y:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    if-nez p1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/im/av/view/WxAlertController;->A:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 280
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 281
    iget-object v0, p0, Lcom/im/av/view/WxAlertController;->H:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 284
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 302
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :pswitch_0
    iput-object p2, p0, Lcom/im/av/view/WxAlertController;->p:Ljava/lang/CharSequence;

    .line 288
    iput-object p4, p0, Lcom/im/av/view/WxAlertController;->q:Landroid/os/Message;

    .line 299
    :goto_0
    return-void

    .line 292
    :pswitch_1
    iput-object p2, p0, Lcom/im/av/view/WxAlertController;->s:Ljava/lang/CharSequence;

    .line 293
    iput-object p4, p0, Lcom/im/av/view/WxAlertController;->t:Landroid/os/Message;

    goto :goto_0

    .line 297
    :pswitch_2
    iput-object p2, p0, Lcom/im/av/view/WxAlertController;->v:Ljava/lang/CharSequence;

    .line 298
    iput-object p4, p0, Lcom/im/av/view/WxAlertController;->w:Landroid/os/Message;

    goto :goto_0

    .line 284
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/im/av/view/WxAlertController;->z:Landroid/graphics/drawable/Drawable;

    .line 326
    iget-object v0, p0, Lcom/im/av/view/WxAlertController;->A:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/im/av/view/WxAlertController;->z:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/im/av/view/WxAlertController;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 329
    :cond_0
    return-void
.end method

.method a(Landroid/widget/Button;)V
    .locals 6
    .param p1, "button"    # Landroid/widget/Button;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 564
    .line 565
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 566
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x1

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 567
    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 568
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 571
    iget-object v3, p0, Lcom/im/av/view/WxAlertController;->e:Landroid/view/Window;

    sget v4, Ljou$c;->leftSpacer:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 572
    .local v0, "leftSpacer":Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 573
    iget-object v3, p0, Lcom/im/av/view/WxAlertController;->e:Landroid/view/Window;

    sget v4, Ljou$c;->rightSpacer:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 574
    .local v2, "rightSpacer":Landroid/view/View;
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 575
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/im/av/view/WxAlertController;->f:Ljava/lang/CharSequence;

    .line 220
    iget-object v0, p0, Lcom/im/av/view/WxAlertController;->B:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/im/av/view/WxAlertController;->B:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "forceInverseBackground"    # Z

    .prologue
    .line 332
    iput-boolean p1, p0, Lcom/im/av/view/WxAlertController;->E:Z

    .line 333
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/im/av/view/WxAlertController;->i:Landroid/view/View;

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/im/av/view/WxAlertController;->n:Z

    .line 245
    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/im/av/view/WxAlertController;->g:Ljava/lang/CharSequence;

    .line 234
    iget-object v0, p0, Lcom/im/av/view/WxAlertController;->C:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/im/av/view/WxAlertController;->C:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :cond_0
    return-void
.end method

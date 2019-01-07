.class public Lcrs;
.super Ljava/lang/Object;
.source "EmotionToucher.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrs$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/view/View;

.field b:Lcrs$a;

.field private final c:Ljava/lang/String;

.field private d:Z

.field private e:Lga;

.field private f:Landroid/view/GestureDetector$SimpleOnGestureListener;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrs;->c:Ljava/lang/String;

    .line 55
    new-instance v0, Lcrs$1;

    invoke-direct {v0, p0}, Lcrs$1;-><init>(Lcrs;)V

    iput-object v0, p0, Lcrs;->f:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 27
    if-nez p1, :cond_0

    .line 28
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "view cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    iput-object p1, p0, Lcrs;->a:Landroid/view/View;

    .line 31
    iget-object v0, p0, Lcrs;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 32
    new-instance v0, Lga;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcrs;->f:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, v1, v2}, Lga;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcrs;->e:Lga;

    .line 33
    return-void
.end method

.method static synthetic a(Lcrs;)Lcrs$a;
    .locals 1
    .param p0, "x0"    # Lcrs;

    .prologue
    .line 17
    iget-object v0, p0, Lcrs;->b:Lcrs$a;

    return-object v0
.end method

.method static synthetic a(Lcrs;Z)Z
    .locals 1
    .param p0, "x0"    # Lcrs;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcrs;->d:Z

    return v0
.end method

.method static synthetic b(Lcrs;)Z
    .locals 1
    .param p0, "x0"    # Lcrs;

    .prologue
    .line 17
    iget-boolean v0, p0, Lcrs;->d:Z

    return v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 43
    iget-object v2, p0, Lcrs;->e:Lga;

    invoke-virtual {v2, p2}, Lga;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 44
    .local v1, "result":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 45
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_0

    .line 52
    :goto_0
    :pswitch_0
    return v1

    .line 1088
    :pswitch_1
    iget-boolean v2, p0, Lcrs;->d:Z

    if-eqz v2, :cond_0

    .line 1089
    iput-boolean v3, p0, Lcrs;->d:Z

    .line 1090
    iget-object v2, p0, Lcrs;->b:Lcrs$a;

    if-eqz v2, :cond_0

    .line 1091
    iget-object v2, p0, Lcrs;->b:Lcrs$a;

    invoke-interface {v2}, Lcrs$a;->b()V

    .line 2084
    :cond_0
    iput-boolean v3, p0, Lcrs;->d:Z

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

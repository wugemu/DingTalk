.class public Lcom/im/av/view/WxAlertController$AlertParams;
.super Ljava/lang/Object;
.source "WxAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/av/view/WxAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation


# instance fields
.field public A:Landroid/database/Cursor;

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:Z

.field public E:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public F:Z

.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/LayoutInflater;

.field public c:I

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:Ljava/lang/CharSequence;

.field public f:Landroid/view/View;

.field public g:Ljava/lang/CharSequence;

.field public h:Ljava/lang/CharSequence;

.field public i:Landroid/content/DialogInterface$OnClickListener;

.field public j:Ljava/lang/CharSequence;

.field public k:Landroid/content/DialogInterface$OnClickListener;

.field public l:Ljava/lang/CharSequence;

.field public m:Landroid/content/DialogInterface$OnClickListener;

.field public n:Z

.field public o:Landroid/content/DialogInterface$OnCancelListener;

.field public p:Landroid/content/DialogInterface$OnKeyListener;

.field public q:[Ljava/lang/CharSequence;

.field public r:Landroid/widget/ListAdapter;

.field public s:Landroid/content/DialogInterface$OnClickListener;

.field public t:Landroid/view/View;

.field public u:Z

.field public v:[Z

.field public w:Z

.field public x:Z

.field public y:I

.field public z:Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 726
    iput v1, p0, Lcom/im/av/view/WxAlertController$AlertParams;->c:I

    .line 748
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/im/av/view/WxAlertController$AlertParams;->u:Z

    .line 752
    iput v1, p0, Lcom/im/av/view/WxAlertController$AlertParams;->y:I

    .line 760
    iput-boolean v2, p0, Lcom/im/av/view/WxAlertController$AlertParams;->F:Z

    .line 778
    iput-object p1, p0, Lcom/im/av/view/WxAlertController$AlertParams;->a:Landroid/content/Context;

    .line 779
    iput-boolean v2, p0, Lcom/im/av/view/WxAlertController$AlertParams;->n:Z

    .line 780
    const-string/jumbo v0, "layout_inflater"

    .line 781
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/im/av/view/WxAlertController$AlertParams;->b:Landroid/view/LayoutInflater;

    .line 782
    return-void
.end method

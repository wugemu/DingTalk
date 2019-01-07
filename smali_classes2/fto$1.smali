.class final Lfto$1;
.super Ljava/lang/Object;
.source "NameCardInfosHeaderViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfsq;

.field final synthetic b:Lfto;


# direct methods
.method constructor <init>(Lfto;Lfsq;)V
    .locals 0
    .param p1, "this$0"    # Lfto;

    .prologue
    .line 24
    iput-object p1, p0, Lfto$1;->b:Lfto;

    iput-object p2, p0, Lfto$1;->a:Lfsq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 30
    return-void
.end method

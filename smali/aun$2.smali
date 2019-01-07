.class final Laun$2;
.super Ljava/lang/Object;
.source "CalendarDrawerContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laun;


# direct methods
.method constructor <init>(Laun;)V
    .locals 0
    .param p1, "this$0"    # Laun;

    .prologue
    .line 307
    iput-object p1, p0, Laun$2;->a:Laun;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 310
    iget-object v0, p0, Laun$2;->a:Laun;

    invoke-static {v0}, Laun;->c(Laun;)V

    .line 311
    return-void
.end method

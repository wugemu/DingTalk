.class final Lcvi$a;
.super Ljava/lang/Object;
.source "FilterListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcvi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field final synthetic c:Lcvi;


# direct methods
.method constructor <init>(Lcvi;)V
    .locals 0
    .param p1, "this$0"    # Lcvi;

    .prologue
    .line 68
    .local p0, "this":Lcvi$a;, "Lcvi<TT;>.a;"
    iput-object p1, p0, Lcvi$a;->c:Lcvi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

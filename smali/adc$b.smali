.class final Ladc$b;
.super Ljava/lang/Object;
.source "MailSignListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ladc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/widget/TextView;

.field final synthetic c:Ladc;


# direct methods
.method constructor <init>(Ladc;)V
    .locals 0
    .param p1, "this$0"    # Ladc;

    .prologue
    .line 114
    iput-object p1, p0, Ladc$b;->c:Ladc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

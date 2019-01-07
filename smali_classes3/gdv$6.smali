.class final Lgdv$6;
.super Ljava/lang/Object;
.source "DentryListHeaderViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgdv;-><init>(Landroid/view/View;Lgdu$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgdv;


# direct methods
.method constructor <init>(Lgdv;)V
    .locals 0
    .param p1, "this$0"    # Lgdv;

    .prologue
    .line 128
    iput-object p1, p0, Lgdv$6;->a:Lgdv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 131
    iget-object v0, p0, Lgdv$6;->a:Lgdv;

    invoke-static {v0}, Lgdv;->a(Lgdv;)Lgdu$a;

    .line 132
    return-void
.end method

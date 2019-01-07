.class final Lhrc$6;
.super Ljava/lang/Object;
.source "EAppExceptionTipsManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhrc;->a(Landroid/content/Context;Ljava/util/Map;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lhrc$6;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 330
    iget-object v0, p0, Lhrc$6;->a:Landroid/view/View;

    invoke-static {v0}, Lhrc;->a(Landroid/view/View;)V

    .line 331
    return-void
.end method

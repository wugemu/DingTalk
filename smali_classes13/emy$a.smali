.class public final Lemy$a;
.super Ljava/lang/Object;
.source "GlobalSearchTabAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lemy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field final synthetic e:Lemy;


# direct methods
.method public constructor <init>(Lemy;)V
    .locals 0
    .param p1, "this$0"    # Lemy;

    .prologue
    .line 154
    iput-object p1, p0, Lemy$a;->e:Lemy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

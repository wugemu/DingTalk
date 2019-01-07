.class final Lhbo$a;
.super Ljava/lang/Object;
.source "ImageFolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhbo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/ImageView;

.field d:Landroid/view/View;

.field final synthetic e:Lhbo;


# direct methods
.method constructor <init>(Lhbo;)V
    .locals 0
    .param p1, "this$0"    # Lhbo;

    .prologue
    .line 94
    iput-object p1, p0, Lhbo$a;->e:Lhbo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

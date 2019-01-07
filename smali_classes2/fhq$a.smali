.class public final Lfhq$a;
.super Ljava/lang/Object;
.source "GrantResourcesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfhq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field final synthetic b:Lfhq;


# direct methods
.method public constructor <init>(Lfhq;)V
    .locals 0
    .param p1, "this$0"    # Lfhq;

    .prologue
    .line 270
    iput-object p1, p0, Lfhq$a;->b:Lfhq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

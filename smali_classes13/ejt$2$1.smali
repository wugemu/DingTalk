.class final Lejt$2$1;
.super Ljava/lang/Object;
.source "HomeOADropMenuAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lejt$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lejt$2;


# direct methods
.method constructor <init>(Lejt$2;)V
    .locals 0
    .param p1, "this$1"    # Lejt$2;

    .prologue
    .line 229
    iput-object p1, p0, Lejt$2$1;->a:Lejt$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lejt$2$1;->a:Lejt$2;

    iget-object v0, v0, Lejt$2;->b:Lejt;

    invoke-virtual {v0}, Lejt;->notifyDataSetChanged()V

    .line 233
    return-void
.end method

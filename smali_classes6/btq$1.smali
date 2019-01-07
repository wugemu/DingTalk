.class public final Lbtq$1;
.super Ljava/lang/Object;
.source "AnchorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbtq;


# direct methods
.method public constructor <init>(Lbtq;)V
    .locals 0
    .param p1, "this$0"    # Lbtq;

    .prologue
    .line 106
    iput-object p1, p0, Lbtq$1;->a:Lbtq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lbtq$1;->a:Lbtq;

    invoke-virtual {v0}, Lbtq;->c()V

    .line 110
    return-void
.end method

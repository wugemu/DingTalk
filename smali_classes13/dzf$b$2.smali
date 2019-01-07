.class final Ldzf$b$2;
.super Ljava/lang/Object;
.source "AbstractVoiceRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldzf$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldzf$b;


# direct methods
.method constructor <init>(Ldzf$b;)V
    .locals 0
    .param p1, "this$0"    # Ldzf$b;

    .prologue
    .line 202
    iput-object p1, p0, Ldzf$b$2;->a:Ldzf$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 205
    iget-object v0, p0, Ldzf$b$2;->a:Ldzf$b;

    .line 1160
    iget-object v0, v0, Ldzf$b;->a:Lcma;

    .line 205
    iget-object v1, p0, Ldzf$b$2;->a:Ldzf$b;

    .line 2160
    iget-object v1, v1, Ldzf$b;->b:Ljava/util/List;

    .line 205
    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 206
    return-void
.end method

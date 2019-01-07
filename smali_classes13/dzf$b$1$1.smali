.class final Ldzf$b$1$1;
.super Ljava/lang/Object;
.source "AbstractVoiceRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldzf$b$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldzf$b$1;


# direct methods
.method constructor <init>(Ldzf$b$1;)V
    .locals 0
    .param p1, "this$1"    # Ldzf$b$1;

    .prologue
    .line 188
    iput-object p1, p0, Ldzf$b$1$1;->a:Ldzf$b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Ldzf$b$1$1;->a:Ldzf$b$1;

    iget-object v0, v0, Ldzf$b$1;->a:Ldzf$b;

    invoke-static {v0}, Ldzf$b;->a(Ldzf$b;)V

    .line 192
    return-void
.end method

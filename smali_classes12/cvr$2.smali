.class final Lcvr$2;
.super Ljava/lang/Object;
.source "GmicNameCardHolder.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcvr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcvr;


# direct methods
.method constructor <init>(Lcvr;)V
    .locals 0
    .param p1, "this$0"    # Lcvr;

    .prologue
    .line 226
    iput-object p1, p0, Lcvr$2;->a:Lcvr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 226
    .line 1229
    iget-object v0, p0, Lcvr$2;->a:Lcvr;

    invoke-virtual {v0}, Lcvr;->n()V

    .line 1230
    sget v0, Lctk$i;->dt_im_chat_collect_namecard_suc:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 226
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 240
    iget-object v0, p0, Lcvr$2;->a:Lcvr;

    invoke-virtual {v0}, Lcvr;->n()V

    .line 241
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 236
    return-void
.end method

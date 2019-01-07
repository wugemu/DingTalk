.class public final Ldfr$1;
.super Ljava/lang/Object;
.source "ChatThemeManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldfr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ldfr;


# direct methods
.method public constructor <init>(Ldfr;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldfr;

    .prologue
    .line 133
    iput-object p1, p0, Ldfr$1;->b:Ldfr;

    iput-object p2, p0, Ldfr$1;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 133
    check-cast p1, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    .line 1136
    iget-object v0, p0, Ldfr$1;->b:Ldfr;

    invoke-virtual {v0, p1}, Ldfr;->a(Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;)V

    .line 1137
    iget-object v0, p0, Ldfr$1;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-object v0, p0, Ldfr$1;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 142
    iget-object v0, p0, Ldfr$1;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onProgress(Ljava/lang/Object;I)V

    .line 143
    return-void
.end method

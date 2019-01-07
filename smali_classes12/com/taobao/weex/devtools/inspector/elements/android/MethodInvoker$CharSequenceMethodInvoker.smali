.class Lcom/taobao/weex/devtools/inspector/elements/android/MethodInvoker$CharSequenceMethodInvoker;
.super Lcom/taobao/weex/devtools/inspector/elements/android/MethodInvoker$TypedMethodInvoker;
.source "MethodInvoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/elements/android/MethodInvoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharSequenceMethodInvoker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/devtools/inspector/elements/android/MethodInvoker$TypedMethodInvoker",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 90
    const-class v0, Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/taobao/weex/devtools/inspector/elements/android/MethodInvoker$TypedMethodInvoker;-><init>(Ljava/lang/Class;)V

    .line 91
    return-void
.end method


# virtual methods
.method protected convertArgument(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0
    .param p1, "argument"    # Ljava/lang/String;

    .prologue
    .line 95
    return-object p1
.end method

.method protected bridge synthetic convertArgument(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/taobao/weex/devtools/inspector/elements/android/MethodInvoker$CharSequenceMethodInvoker;->convertArgument(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

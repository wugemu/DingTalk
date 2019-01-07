.class Lcom/taobao/weex/devtools/inspector/elements/android/MethodInvoker$BooleanMethodInvoker;
.super Lcom/taobao/weex/devtools/inspector/elements/android/MethodInvoker$TypedMethodInvoker;
.source "MethodInvoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/elements/android/MethodInvoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BooleanMethodInvoker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/devtools/inspector/elements/android/MethodInvoker$TypedMethodInvoker",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 123
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/taobao/weex/devtools/inspector/elements/android/MethodInvoker$TypedMethodInvoker;-><init>(Ljava/lang/Class;)V

    .line 124
    return-void
.end method


# virtual methods
.method protected convertArgument(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "argument"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic convertArgument(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/taobao/weex/devtools/inspector/elements/android/MethodInvoker$BooleanMethodInvoker;->convertArgument(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

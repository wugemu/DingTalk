.class final Lcom/alibaba/android/user/impl/AccountInterfaceImpl$5;
.super Ljava/lang/Object;
.source "AccountInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/impl/AccountInterfaceImpl;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/impl/AccountInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/impl/AccountInterfaceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/impl/AccountInterfaceImpl;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/alibaba/android/user/impl/AccountInterfaceImpl$5;->a:Lcom/alibaba/android/user/impl/AccountInterfaceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    .line 279
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a()V

    .line 280
    return-void
.end method

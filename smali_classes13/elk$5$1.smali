.class final Lelk$5$1;
.super Ljava/lang/Object;
.source "ChannelLogSwitchManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lelk$5;->a(Lifg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lelk$5;


# direct methods
.method constructor <init>(Lelk$5;)V
    .locals 0
    .param p1, "this$1"    # Lelk$5;

    .prologue
    .line 126
    iput-object p1, p0, Lelk$5$1;->a:Lelk$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lelv;->a(Landroid/content/Context;)V

    .line 130
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lelv;->b(Landroid/content/Context;)V

    .line 131
    return-void
.end method

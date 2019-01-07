.class public final Lhdl;
.super Ljava/lang/Object;
.source "PluginEntry.java"


# instance fields
.field public a:Lcom/alibaba/lightapp/runtime/Plugin;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/Plugin;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "plugin"    # Lcom/alibaba/lightapp/runtime/Plugin;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lhdl;->b:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lhdl;->a:Lcom/alibaba/lightapp/runtime/Plugin;

    .line 12
    return-void
.end method

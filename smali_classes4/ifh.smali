.class public abstract Lifh;
.super Ljava/lang/Object;
.source "CommandListener.java"

# interfaces
.implements Lcom/alibaba/wukong/WKListener;


# instance fields
.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "cmdName"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    if-nez p1, :cond_0

    .line 14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "command name is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_0
    iput-object p1, p0, Lifh;->c:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public abstract a(Lifg;)V
.end method

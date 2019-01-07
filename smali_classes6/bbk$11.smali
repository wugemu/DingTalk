.class final Lbbk$11;
.super Lbbx;
.source "DataSourceRemote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbbx",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbbk;


# direct methods
.method constructor <init>(Lbbk;Lcmi;)V
    .locals 0
    .param p1, "this$0"    # Lbbk;
    .param p2, "callback"    # Lcmi;

    .prologue
    .line 2045
    iput-object p1, p0, Lbbk$11;->a:Lbbk;

    invoke-direct {p0, p2}, Lbbx;-><init>(Lcmi;)V

    return-void
.end method

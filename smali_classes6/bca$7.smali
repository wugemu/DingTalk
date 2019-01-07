.class final Lbca$7;
.super Lbbx;
.source "CommentDataSourceRemote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbca;
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
.field final synthetic a:Lbca;


# direct methods
.method constructor <init>(Lbca;Lcmi;)V
    .locals 0
    .param p1, "this$0"    # Lbca;
    .param p2, "callback"    # Lcmi;

    .prologue
    .line 152
    iput-object p1, p0, Lbca$7;->a:Lbca;

    invoke-direct {p0, p2}, Lbbx;-><init>(Lcmi;)V

    return-void
.end method

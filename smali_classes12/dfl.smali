.class public final Ldfl;
.super Ldlz;
.source "SvcGrpReplyInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldfl$a;
    }
.end annotation


# instance fields
.field public final b:Ldfl$a;


# direct methods
.method public constructor <init>(Ldfl$a;)V
    .locals 0
    .param p1, "result"    # Ldfl$a;

    .prologue
    .line 9
    invoke-direct {p0}, Ldlz;-><init>()V

    .line 10
    iput-object p1, p0, Ldfl;->b:Ldfl$a;

    .line 11
    return-void
.end method

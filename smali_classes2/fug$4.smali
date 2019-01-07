.class public final Lfug$4;
.super Lcmg;
.source "NameCardApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfug;


# direct methods
.method public constructor <init>(Lfug;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfug;

    .prologue
    .line 222
    .local p2, "x0":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iput-object p1, p0, Lfug$4;->a:Lfug;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    return-object v0
.end method

.class public final Lato$2;
.super Latm;
.source "HolidayDataSourceRemote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lato;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Latm",
        "<",
        "Laqx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lato;


# direct methods
.method public constructor <init>(Lato;Lcmi;)V
    .locals 0
    .param p1, "this$0"    # Lato;
    .param p2, "callback"    # Lcmi;

    .prologue
    .line 36
    iput-object p1, p0, Lato$2;->a:Lato;

    invoke-direct {p0, p2}, Latm;-><init>(Lcmi;)V

    return-void
.end method

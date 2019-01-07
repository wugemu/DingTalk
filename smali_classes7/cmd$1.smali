.class final Lcmd$1;
.super Lcmg;
.source "LogAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcmd;->a(Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic a:Lcmd;


# direct methods
.method constructor <init>(Lcmd;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcmd;

    .prologue
    .line 41
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iput-object p1, p0, Lcmd$1;->a:Lcmd;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 41
    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method

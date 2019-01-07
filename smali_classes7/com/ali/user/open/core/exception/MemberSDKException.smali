.class public Lcom/ali/user/open/core/exception/MemberSDKException;
.super Ljava/lang/RuntimeException;


# static fields
.field private static final serialVersionUID:J = 0x12d77bd0c6ccc1e6L


# instance fields
.field public code:I

.field public message:Ljava/lang/String;

.field public throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/ali/user/open/core/exception/MemberSDKException;->message:Ljava/lang/String;

    return-void

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    if-nez p2, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-direct {p0, v0, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Lcom/ali/user/open/core/exception/MemberSDKException;->code:I

    iput-object p2, p0, Lcom/ali/user/open/core/exception/MemberSDKException;->message:Ljava/lang/String;

    iput-object p3, p0, Lcom/ali/user/open/core/exception/MemberSDKException;->throwable:Ljava/lang/Throwable;

    return-void

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method
